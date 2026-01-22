import Nav from "./Nav";
import TenantName from "./TenantName";

export default async function TicketsLayout(pageProps) {

  const { tenant } = await pageProps.params;

  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
      <TenantName tenantName={tenant} />
      <Nav tenant={tenant}/>
      </section>
      <section>{pageProps.children}</section>
    </>
  );
}