# Korku Wiki

Public encyclopedia for the Korku fantasy world. The site is generated with [Quartz](https://quartz.jzhao.xyz/) and deployed to GitHub Pages.

Only approved Korku worldbuilding notes and their required assets are stored in this repository.

## Private campaign material

Campaign notes and campaign assets are admin-only. They remain in the private Obsidian vault and must not be copied to this repository. The Quartz configuration and `.gitignore` both exclude:

- `Projects/Korku/Campaigns/`
- `Projects/Korku/Assets/Campaigns/`
- `Projects/Korku/Campaigns.md`

To refresh the public Korku content from the private vault, run:

```bash
./scripts/sync-public-content.sh /path/to/private/vault
```
