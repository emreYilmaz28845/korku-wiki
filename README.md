# Korku Wiki

Public encyclopedia for the Korku fantasy world. The site is generated with [Quartz](https://quartz.jzhao.xyz/) and deployed to GitHub Pages.

Only approved Korku worldbuilding notes and their required assets are stored in this repository.

## Private and non-public material

Campaign notes, campaign chapters, archived/non-canonical drafts, and source documents are admin-only or unsuitable for the public site. They remain in the private Obsidian vault and must not be copied to this repository. The sync script, Quartz configuration, and `.gitignore` exclude:

- `Projects/Korku/Campaigns/`
- `Projects/Korku/Assets/Campaigns/`
- `Projects/Korku/Campaigns.md`
- `Projects/Korku/Bölümler/`
- `Projects/Korku/Bölümler.md`
- `Projects/Korku/Arşiv/`
- non-renderable `*.docx`, `*.pdf`, and `*.txt` source files

To refresh the public Korku content from the private vault, run:

```bash
./scripts/sync-public-content.sh /path/to/private/vault
```
