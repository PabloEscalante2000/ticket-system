import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
export async function proxy(request) {
  const { supabase, response }
     = getSupabaseReqResClient({ request });
  return response.value;
}