import { themes } from "./src/Themes.res.mjs";
import daisyui from "daisyui";

export default {
  content: [
    "./src/components/**/*.res",
    "./src/layouts/**/*.res",
    "./src/pages/**/*.res",
    "./src/*.res",
  ],
  theme: {
    fontFamily: {
      sans: ["Work", "Open Sans"],
      // serif: ["Newsreader"],
      body: ["Work"],
      display: ["Work"],
    },
    extend: {},
    screens: {
      xs: "480px",
      sm: "640px",
      md: "768px",
      lg: "1024px",
      xl: "1380px",
      xxl: "1536px",
    },
    keyframes: {
      wave: {
        "20%": { transform: "rotate(-8deg)" },
        "10%, 30%": { transform: "rotate(14deg)" },
        "40%": { transform: "rotate(-4deg)" },
        "50%": { transform: "rotate(10deg)" },
        "0%, 65%, 100%": { transform: "rotate(0)" },
      },
      grow: {
        "0%": { transform: "scale(0)" },
        "100%": { transform: "scale(1)" },
      },
      fade: {
        "0%": { opacity: 0 },
        "100%": { opacity: 1 },
      },
    },
    animation: {
      wave: "wave 2s ease-in-out 0s infinite",
      grow: "grow 300ms ease-in-out",
      fade: "fade 200ms ease-in-out",
    },
  },
  plugins: [daisyui],
  daisyui: {
    themes,
    darkTheme: "forest",
  },
};
