{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageSubresourceRange where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags



data {-# CTYPE "vulkan/vulkan.h" "VkImageSubresourceRange" #-} VkImageSubresourceRange =
       VkImageSubresourceRange
         { aspectMask :: VkImageAspectFlags
         , baseMipLevel :: #{type uint32_t}
         , levelCount :: #{type uint32_t}
         , baseArrayLayer :: #{type uint32_t}
         , layerCount :: #{type uint32_t}
         }

instance Storable VkImageSubresourceRange where
  sizeOf    _ = #{size      struct VkImageSubresourceRange}
  alignment _ = #{alignment struct VkImageSubresourceRange}

  peek ptr = 
    VkImageSubresourceRange
       <$> peek (offset @"aspectMask" ptr)
       <*> peek (offset @"baseMipLevel" ptr)
       <*> peek (offset @"levelCount" ptr)
       <*> peek (offset @"baseArrayLayer" ptr)
       <*> peek (offset @"layerCount" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"baseMipLevel" ptr val
    pokeField @"levelCount" ptr val
    pokeField @"baseArrayLayer" ptr val
    pokeField @"layerCount" ptr val

instance Offset "aspectMask" VkImageSubresourceRange where
  rawOffset = #{offset struct VkImageSubresourceRange, aspectMask}

instance Offset "baseMipLevel" VkImageSubresourceRange where
  rawOffset = #{offset struct VkImageSubresourceRange, baseMipLevel}

instance Offset "levelCount" VkImageSubresourceRange where
  rawOffset = #{offset struct VkImageSubresourceRange, levelCount}

instance Offset "baseArrayLayer" VkImageSubresourceRange where
  rawOffset = #{offset struct VkImageSubresourceRange, baseArrayLayer}

instance Offset "layerCount" VkImageSubresourceRange where
  rawOffset = #{offset struct VkImageSubresourceRange, layerCount}