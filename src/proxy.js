import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";
export async function proxy(req) {
  const { supabase, response } = getSupabaseReqResClient({ request:req });
  const session = await supabase.auth.getSession();
  const requestedPath = req.nextUrl.pathname;

  // Separar el tenantID del requestedPath
  const [tenant, ...restOfPath] = requestedPath.substr(1).split("/")
  const applicationPath = "/" + restOfPath.join("/");

  //Asegurandose que este bien escrito el tenant
  if ( !/[a-z0-9-_]+/.test(tenant) ) {
    return NextResponse.rewrite(new URL("/not-found", req.url));
  }

  const sessionUser = session.data?.session?.user;
  if (applicationPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL("/", req.url));
    }
  } else if (applicationPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/tickets", req.url));
    }
  }
  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};