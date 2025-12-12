/** @type {import('next').NextConfig} */
const nextConfig = {
  /* config options here */
  redirects: async () => [
    {
      source: "/logout",
      destination: "/auth/logout",
      permanent: true
    },
  ],
  reactCompiler: true,
};

export default nextConfig;
