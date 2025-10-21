---
name: draw-card
description: Draw random cards from image-based decks (tarot, playing cards, RPG oracles) for solo roleplaying. Supports multiple decks via subdirectories.
---

# How to Use

The `cards/` directory contains card decks as image files (JPG, PNG, SVG). Subdirectories represent different decks.

**Drawing cards:**
- Pick randomly from the requested deck
- Track drawn cards; don't repeat until deck exhausted, then shuffle and reset
- If tracking fails, draw randomly each time
- Support multiple draws: "draw three cards"
- Deck selection via subdirectory: "draw a poker card" uses `cards/poker/`, "draw two tarot cards" uses `cards/tarot/`
- Check for `README.md` in subdirectories for deck-specific instructions

**Interpretation:**

By default, only show the card. IF AND ONLY IF asked, interpret drawn cards based on current story context. Don't interpret unless requested. ONLY do this when asked.

## Display Process

Images don't auto-render for users, so copy them to outputs:

1. **View** card at source: `view /mnt/skills/user/draw-card/cards/poker/ace_spades.png`
2. **Copy** to outputs: `cp "/mnt/skills/user/draw-card/cards/poker/ace_spades.png" /mnt/user-data/outputs/poker_ace_spades.png`
3. **Link** for user: `[Ace of Spades](computer:///mnt/user-data/outputs/poker_ace_spades.png)`

**Example workflow for King of Hearts:**

```bash
view /mnt/skills/user/draw-card/cards/poker/king_hearts.jpg
cp "/mnt/skills/user/draw-card/cards/poker/king_hearts.jpg" /mnt/user-data/outputs/poker_king_hearts.jpg
```
Provide: `[King of Hearts](computer:///mnt/user-data/outputs/poker_king_hearts.jpg)` and only if asked to describe: "Red court card showing a king with sword and crown."

## Cards Included

- A sub-set of tarot cards in included in the `cards/swiss-tarot` directory.

## Package Info
Version: 1.0
Author: cote.io
