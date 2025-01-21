"use client";

import { useEffect } from "react";

const APP_URL = process.env.NEXT_PUBLIC_APP_URL;

export default function SessionStarter() {
  useEffect(() => {
    fetch(`${APP_URL}/api/session`, {
      method: "GET",
      credentials: "include", // Ensures cookies are sent and received
    })
      .then((response) => {
        if (!response.ok) throw new Error("Failed to fetch session");

        console.log(response.headers.get("set-cookie"));
      })
      .catch((error) => console.error(error));
  }, []);

  return <></>;
}
