local function shared_insert(args, parent, user_args)
  return args[1][1]
end

return {
  -- Django
  s("model.create", {
    t { "from django.db import models", "", "", "class " },
    i(1),
    t { "(models.Model):", "\t" },
    i(2),
    t " = models.",
    i(3),
    t { "()", "", "\tdef __str__(self):", "\t\treturn self." },
    f(shared_insert, { 2 }),
  }),
  s("model.serializer.create", {
    t { "from rest_framework import serializers", "from apps." },
    i(1),
    t ".models import ",
    i(2),
    t { "", "", "class " },
    f(shared_insert, { 2 }),
    t { "Serializer(serializers.ModelSerializer):", "\tclass Meta:", "\t\tmodel = " },
    f(shared_insert, { 2 }),
    t { "", '\t\tfields = "__all__"' },
  }),
  s("model.viewset.create", {
    t { "from rest_framework import viewsets", "from .models import " },
    i(1),
    t { "", "from .serializers import " },
    f(shared_insert, { 1 }),
    t { "Serializer", "", "", "class " },
    f(shared_insert, { 1 }),
    t { "ViewSet(viewsets.ModelViewSet):", "\tqueryset = " },
    f(shared_insert, { 1 }),
    t { ".objects.all()", "\tserializer_class = " },
    f(shared_insert, { 1 }),
    t "Serializer",
  }),
}
