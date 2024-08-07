/**
  업그레이드 된 아이템 구하기
 */

SELECT
    INFO.ITEM_ID,
    INFO.ITEM_NAME,
    INFO.RARITY
FROM ITEM_INFO AS INFO
JOIN ITEM_TREE AS TREE ON INFO.ITEM_ID = TREE.ITEM_ID
WHERE 1=1
  AND TREE.PARENT_ITEM_ID IN (
    SELECT
        ITEM_ID
    FROM ITEM_INFO
    WHERE 1=1
      AND RARITY='RARE'
)
ORDER BY ITEM_ID DESC