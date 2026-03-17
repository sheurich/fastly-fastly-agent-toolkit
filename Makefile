.PHONY: validate skillscheck ci

validate:
	./vendor/agent-validate/validate.sh .

skillscheck:
	uvx skillscheck skills

ci: validate skillscheck
