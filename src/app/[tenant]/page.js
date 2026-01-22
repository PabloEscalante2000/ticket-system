import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { Login } from "./Login";
import { notFound } from "next/navigation";

export default async function LoginPage({ searchParams, params }) {

  const paramsSP = await searchParams
  const { tenant } = await params

  const supabaseAdmin = getSupabaseAdminClient()
  const {data, error} = await supabaseAdmin
  .from("tenants").select("*").eq("id", tenant).single();

  if(error) {
    notFound()
  }

  const {name: tenantName} = data

  if(!tenantName) {
    notFound()
  }

  const wantsMagicLink = paramsSP.magicLink === "yes";

  return (
    <Login tenantName={tenantName} tenant={tenant} isPasswordLogin={!wantsMagicLink}/>
  );
}
