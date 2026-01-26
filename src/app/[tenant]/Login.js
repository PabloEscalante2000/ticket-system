"use client";

import Link from "next/link";
import { useRef } from "react";
import { useRouter } from "next/navigation";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useEffect } from "react";
import { urlPath } from "@/utils/url-helpers";

export const Login = ({ isPasswordLogin, tenant, tenantName }) => {
  const router = useRouter();
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        if (session.user.app_metadata.tenants?.includes(tenant)) {
          router.push(`/${tenant}/tickets`);
        } else {
          supabase.auth.signOut();
          alert("Could not sign in, tenant does not match.");
        }
      }
    });
    return () => subscription.unsubscribe();
  });

  return (
    <form
      action={isPasswordLogin ? urlPath("/auth/pw-login",tenant) : urlPath("/auth/magic-link",tenant)}
      method="POST"
      onSubmit={(event) => {
        isPasswordLogin && event.preventDefault();
        if (isPasswordLogin) {
          // * User wants to login with password
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((result) => {
              if (result.data?.user) {
                router.push(urlPath("/tickets",tenant));
              } else {
                alert("Could not sign in");
              }
            });
        }
      }}
    >
      <input type="hidden" name="tenant" value={tenant} />
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>
          Login
          <div style={{ display: "block", fontSize: "0.7em" }}>
            {tenantName}
          </div>
        </header>
        <fieldset>
          <label htmlFor="email">
            Email
            <input
              ref={emailInputRef}
              type="email"
              id="email"
              name="email"
              required
            />
          </label>
          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input
                ref={passwordInputRef}
                type="password"
                id="password"
                name="password"
              />
            </label>
          )}
        </fieldset>
        <p>
          {isPasswordLogin ? (
            <Link
              href={{
                pathname: urlPath("/",tenant),
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          ) : (
            <Link
              href={{
                pathname: urlPath("/",tenant),
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
        </p>
        <button type="submit">
          Sign in with
          {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
      </article>
    </form>
  );
};
