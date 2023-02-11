{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkClearAttachment where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags
import Vulkan.Types.Union.VkClearValue



data {-# CTYPE "vulkan/vulkan.h" "VkClearAttachment" #-} VkClearAttachment =
       VkClearAttachment
         { aspectMask :: VkImageAspectFlags
         , colorAttachment :: #{type uint32_t}
         , clearValue :: VkClearValue
         }

instance Storable VkClearAttachment where
  sizeOf    _ = #{size      struct VkClearAttachment}
  alignment _ = #{alignment struct VkClearAttachment}

  peek ptr = 
    VkClearAttachment
       <$> peek (offset @"aspectMask" ptr)
       <*> peek (offset @"colorAttachment" ptr)
       <*> peek (offset @"clearValue" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"colorAttachment" ptr val
    pokeField @"clearValue" ptr val

instance Offset "aspectMask" VkClearAttachment where
  rawOffset = #{offset struct VkClearAttachment, aspectMask}

instance Offset "colorAttachment" VkClearAttachment where
  rawOffset = #{offset struct VkClearAttachment, colorAttachment}

instance Offset "clearValue" VkClearAttachment where
  rawOffset = #{offset struct VkClearAttachment, clearValue}