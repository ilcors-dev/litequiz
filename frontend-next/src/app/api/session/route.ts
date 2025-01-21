import { NextResponse } from "next/server";

const base_url = process.env.NEXT_PUBLIC_API_URL;

export async function GET(req: Request) {
  const cookieHeader = req.headers.get("cookie") || "";
  const backendResponse = await fetch(`${base_url}/ping`, {
    headers: { Cookie: cookieHeader },
    credentials: "include",
  });

  const cookies = backendResponse.headers.get("set-cookie");
  const data = await backendResponse.json();

  const response = NextResponse.json(data);

  if (cookies) {
    response.headers.set("Set-Cookie", cookies);
  }

  return response;
}
