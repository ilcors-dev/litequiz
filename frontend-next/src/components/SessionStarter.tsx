"use client";

import { api } from "@/lib/axios";
import { useEffect } from "react";

export default function SessionStarter() {
  useEffect(() => {
    api.get("getSession");
  }, []);

  return <></>;
}
