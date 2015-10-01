FILENAME=ElectroForm
INPUT=$(FILENAME).md
OUTPUT=$(FILENAME).pdf

FROM_FORMAT=markdown
PANDOC_EXTENSIONS=pandoc_title_block definition_lists tex_math_single_backslash multiline_tables

EMPTY :=
SPACE := $(EMPTY) $(EMPTY)
FROM_ARGS=$(FROM_FORMAT)+$(subst $(SPACE),+,$(PANDOC_EXTENSIONS))
pdf:
	pandoc --from=$(FROM_ARGS) --output=$(OUTPUT) $(INPUT)
