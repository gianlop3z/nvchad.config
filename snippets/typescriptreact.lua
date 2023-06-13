local function insert(args, parent, user_args)
  return args[1][1]
end

return {
  -- React Native
  s({
    trig = "rns",
    name = "react-native-screen",
    dscr = "Create `react-native` screen as a functional component",
  }, {
    t {
      "import { View, Text } from 'react-native';",
      "import styles from './styles';",
      "",
      "export function ",
    },
    i(1),
    t {
      "() {",
      "\treturn (",
      "\t\t<View>",
      "\t\t\t<Text>Hello world from ",
    },
    f(insert, { 1 }),
    t {
      "</Text>",
      "\t\t</View>",
      "\t);",
      "}",
    },
  }),
  s({
    trig = "rnsapi",
    name = "react-native-screen-with-api-call",
    dscr = "Create `react-native` screen with an `API` call on mount",
  }, {
    t {
      "import { useState, useEffect } from 'react';",
      "import { View, Text } from 'react-native';",
      "import styles from './styles';",
      "",
      "export function ",
    },
    i(1),
    t {
      "() {",
      "\tconst [data, setData] = useState<",
    },
    i(2),
    t ">(",
    i(3),
    t {
      ");",
      "",
      "\tconsole.log({ data });",
      "",
      "\tuseEffect(() => {",
      "\t\t",
    },
    i(4),
    t {
      ".then((data) => {",
      "\t\t\tsetData(data);",
      "\t\t});",
      "\t}, []);",
      "",
      "\treturn (",
      "\t\t<View>",
      "\t\t\t<Text>Hello world from ",
    },
    f(insert, { 1 }),
    t {
      "</Text>",
      "\t\t</View>",
      "\t);",
      "}",
    },
  }),
  s({
    trig = "rnfc",
    name = "react-native-functional-component",
    dscr = "Create `react-native` functional component",
  }, {
    t {
      "import { View, Text } from 'react-native';",
      "import styles from './styles';",
      "",
      "interface Props {",
      "\t",
    },
    i(2),
    t ": ",
    i(3),
    t {
      ";",
      "}",
      "",
      "export function ",
    },
    i(1),
    t "({ ",
    i(4),
    t {
      " }: Props) {",
      "\treturn (",
      "\t\t<View>",
      "\t\t\t<Text>",
    },
    f(insert, { 1 }),
    t {
      "</Text>",
      "\t\t</View>",
      "\t);",
      "}",
    },
  }),
}
