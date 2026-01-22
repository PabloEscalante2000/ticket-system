/** @type {import('next').NextConfig} */
const nextConfig = {
  /* config options here */
  redirects: async () => [
    {
      source: "/:tenant/logout",
      destination: "/:tenant/auth/logout",
      permanent: true
    },
  ],
  reactCompiler: true,
};

export default nextConfig;
