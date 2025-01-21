import { cookies } from "next/headers";

export default async function getSessionCookie() {
  const cookieStore = await cookies();

  const session = cookieStore.get("litequiz-session");

  if (!session) {
    return "";
  }

  const { name, value } = session;

  return `${name}=${value}`;
}
