import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export async function GET(request) {
  const { searchParams } = new URL(request.url);
  const code = searchParams.get("code");

  console.log(code)

  if (!code) {
    return NextResponse.redirect(new URL("/", request.url));
  }

  const supabase = await getSupabaseCookiesUtilClient();

  const { error } = await supabase.auth.exchangeCodeForSession(code);

  if (error) {
    console.log(error)
    return NextResponse.redirect(
      new URL("/error?type=magiclink-auth", request.url)
    );
  }

  // ✅ sesión creada + cookies guardadas
  return NextResponse.redirect(new URL("/tickets", request.url));
}
