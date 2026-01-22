"use client";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect } from "react";

export default function Nav({tenant}) {
  const pathname = usePathname();
  const supabase = getSupabaseBrowserClient();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_OUT") {
        router.push(`/${tenant}`);
      }
    });
    return () => subscription.unsubscribe();
  });

  return (
    <nav>
      <ul>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets",tenant)}
            {...(pathname === "/tickets" ? activeProps : inactiveProps)}
          >
            Ticket List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/new",tenant)}
            {...(pathname === "/tickets/new" ? activeProps : inactiveProps)}
          >
            Create new Ticket
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={urlPath("/tickets/users",tenant)}
            {...(pathname === "/tickets/users" ? activeProps : inactiveProps)}
          >
            User List
          </Link>
        </li>
      </ul>
      <ul>
        <li>
          <Link
            role="button"
            href={urlPath("/logout",tenant)}
            className="secondary"
            prefetch={false}
            onClick={(event) => {
              event.preventDefault();
              supabase.auth.signOut();
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
