import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export async function POST(request) {
  const formData = await request.formData();
  const email = formData.get("email");
  const supabase = await getSupabaseCookiesUtilClient();
  const { data, error } = await supabase.auth.signInWithOtp({
    email,
    options: { 
      shouldCreateUser: false,
      emailRedirectTo: "http://127.0.0.1:3000/auth/callback"
    },
  });
  if (error) {
    return NextResponse.redirect(
      new URL("/error?type=magiclink", request.url),
      302
    );
  } 
  const thanksUrl = new URL("/magic-thanks", request.url);
  return NextResponse.redirect(thanksUrl, 302);
}
