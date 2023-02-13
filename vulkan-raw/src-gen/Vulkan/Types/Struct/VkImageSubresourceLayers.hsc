{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageSubresourceLayers where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags



data {-# CTYPE "vulkan/vulkan.h" "VkImageSubresourceLayers" #-} VkImageSubresourceLayers =
       VkImageSubresourceLayers
         { aspectMask :: VkImageAspectFlags
         , mipLevel :: #{type uint32_t}
         , baseArrayLayer :: #{type uint32_t}
         , layerCount :: #{type uint32_t}
         }

instance Storable VkImageSubresourceLayers where
  sizeOf    _ = #{size      VkImageSubresourceLayers}
  alignment _ = #{alignment VkImageSubresourceLayers}

  peek ptr = 
    VkImageSubresourceLayers
       <$> peek (offset @"aspectMask" ptr)
       <*> peek (offset @"mipLevel" ptr)
       <*> peek (offset @"baseArrayLayer" ptr)
       <*> peek (offset @"layerCount" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"mipLevel" ptr val
    pokeField @"baseArrayLayer" ptr val
    pokeField @"layerCount" ptr val

instance Offset "aspectMask" VkImageSubresourceLayers where
  rawOffset = #{offset VkImageSubresourceLayers, aspectMask}

instance Offset "mipLevel" VkImageSubresourceLayers where
  rawOffset = #{offset VkImageSubresourceLayers, mipLevel}

instance Offset "baseArrayLayer" VkImageSubresourceLayers where
  rawOffset = #{offset VkImageSubresourceLayers, baseArrayLayer}

instance Offset "layerCount" VkImageSubresourceLayers where
  rawOffset = #{offset VkImageSubresourceLayers, layerCount}