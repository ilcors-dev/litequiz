"use client";

import { useToast } from "@/hooks/use-toast";
import { api } from "@/lib/axios";
import { useEffect } from "react";

export default function SessionStarter() {
  const { toast } = useToast();
  useEffect(() => {
    api.get("getSession").catch(() =>
      toast({
        title: "Error",
        description: "Failed to check session.",
        variant: "destructive",
      }),
    );
  }, [toast]);

  return <></>;
}
