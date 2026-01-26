import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";
import { buildUrl } from "./utils/url-helpers";
export async function proxy(req) {
  const { supabase, response } = getSupabaseReqResClient({ request:req });
  const session = await supabase.auth.getSession();
  const requestedPath = req.nextUrl.pathname;

  // Separar el tenantID del requestedPath
  const [tenant, ...restOfPath] = requestedPath.substr(1).split("/")
  const applicationPath = "/" + restOfPath.join("/");

  //Asegurandose que este bien escrito el tenant
  if ( !/[a-z0-9-_]+/.test(tenant) ) {
    return NextResponse.rewrite(buildUrl("/not-found", tenant, req));
  }

  const sessionUser = session.data?.session?.user;
  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(buildUrl("/",tenant,req));
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(buildUrl("/tickets",tenant,req));
    }
  }
  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};