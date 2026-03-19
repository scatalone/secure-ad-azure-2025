# CLAUDE.md — secure-ad-azure-2025

> AI workflow rules for Claude Code on this project.
> Goal: Portfolio polish — clean, professional, recruiter-ready output.

---

## Workflow Orchestration

### 1. Plan Node Default
- Enter plan mode for ANY non-trivial task (3+ steps or architectural decisions)
- If something goes sideways, STOP and re-plan immediately — don't keep pushing
- Use plan mode for verification steps, not just building
- Write detailed specs upfront to reduce ambiguity

### 2. Subagent Strategy
- Use subagents liberally to keep the main context window clean
- Offload research, exploration, and parallel analysis to subagents
- For complex problems, throw more compute at it via subagents
- One task per subagent for focused execution

### 3. Self-Improvement Loop
- After ANY correction: update `tasks/lessons.md` with the pattern
- Write rules for yourself that prevent the same mistake
- Ruthlessly iterate on these lessons until mistake rate drops
- Review lessons at session start for relevant project context

### 4. Verification Before Done
- Never mark a task complete without proving it works
- Diff behavior between main and your changes when relevant
- Ask yourself: "Would a staff engineer approve this?"
- Run tests, check logs, demonstrate correctness

### 5. Demand Elegance (Balanced)
- For non-trivial changes: pause and ask "is there a more elegant way?"
- If a fix feels hacky: "Knowing everything I know now, implement the elegant solution"
- Skip this for simple, obvious fixes — don't over-engineer
- Challenge your own work before presenting it

### 6. Autonomous Bug Fixing
- When given a bug report: just fix it. Don't ask for hand-holding
- Point at logs, errors, failing tests — then resolve them
- Zero context switching required from the user
- Go fix failing behavior without being told how

---

## Task Management

1. **Plan First**: Write plan to `tasks/todo.md` with checkable items
2. **Verify Plan**: Check in before starting implementation
3. **Track Progress**: Mark items complete as you go
4. **Explain Changes**: High-level summary at each step
5. **Document Results**: Add review section to `tasks/todo.md`
6. **Capture Lessons**: Update `tasks/lessons.md` after corrections

---

## Core Principles

- **Simplicity First**: Make every change as simple as possible. Impact minimal code.
- **No Laziness**: Find root causes. No temporary fixes. Senior engineer standards.
- **Minimal Impact**: Changes should only touch what's necessary. Avoid introducing bugs.

---

## Project-Specific Context

This repo demonstrates **Active Directory, Azure, PowerShell automation, and GPO hardening** as part of a career-pivot portfolio targeting IT Support and Cybersecurity roles.

### Portfolio Polish Standards
- All PowerShell scripts must be clean, commented, and production-style
- README must be recruiter-readable: clear purpose, architecture diagram reference, and outcomes
- Screenshots and documentation should tell a cohesive story, not just dump files
- Every commit message should be meaningful — no "updated stuff" messages
- GPO and hardening configs should include rationale comments (the "why", not just the "what")

### What "Done" Looks Like Here
- A hiring manager with no lab access can understand what was built and why
- Scripts run without errors in a clean environment
- Documentation matches what's actually in the repo (no stale READMEs)
- The project demonstrates both technical depth and communication skill
