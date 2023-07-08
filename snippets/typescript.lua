return {
  -- React Native
  s({
    trig = "rnss",
    name = "react-native-stylesheet",
    dscr = "Create and export and empty `Stylesheet`.",
  }, {
    t {
      "import { StyleSheet } from 'react-native';",
      "",
      "export default StyleSheet.create({",
    },
    i(1),
    t "});",
  }),
}
