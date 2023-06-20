local utils = require "custom.utils.snippets"

return {
  -- Django
  s({
    trig = "model.create",
    name = "dj-model-create",
    dscr = "Create a `Model`",
  }, {
    t {
      "from django.db import models",
      "",
      "",
      "class ",
    },
    i(1),
    t {
      "(models.Model):",
      "\t",
    },
    i(2),
    t " = models.",
    i(3),
    t {
      "()",
      "",
      "\tdef __str__(self):",
      "\t\treturn self.",
    },
    f(utils.insert, { 2 }),
  }),
  s({
    trig = "model.serializer.create",
    name = "dj-model-serializer-create",
    dscr = "Create a `ModelSerializer`",
  }, {
    t {
      "from rest_framework import serializers",
      "",
      "from .models import ",
    },
    i(1),
    t {
      "",
      "",
      "",
      "class ",
    },
    f(utils.insert, { 1 }),
    t {
      "Serializer(serializers.ModelSerializer):",
      "\tclass Meta:",
      "\t\tmodel = ",
    },
    f(utils.insert, { 1 }),
    t {
      "",
      '\t\tfields = "__all__"',
    },
  }),
  s({
    trig = "model.viewset.create",
    name = "dj-model-viewset-create",
    dscr = "Create a `ModelViewSet`",
  }, {
    t {
      "from rest_framework import viewsets",
      "from .models import ",
    },
    i(1),
    t {
      "",
      "from .serializers import ",
    },
    f(utils.insert, { 1 }),
    t {
      "Serializer",
      "",
      "",
      "class ",
    },
    f(utils.insert, { 1 }),
    t {
      "ViewSet(viewsets.ModelViewSet):",
      "\tqueryset = ",
    },
    f(utils.insert, { 1 }),
    t {
      ".objects.all()",
      "\tserializer_class = ",
    },
    f(utils.insert, { 1 }),
    t "Serializer",
  }),
}
