{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkClearAttachment}
  alignment _ = #{alignment VkClearAttachment}

  peek ptr = 
    VkClearAttachment
       <$> peek (Foreign.Storable.Offset.offset @"aspectMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorAttachment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"clearValue" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"colorAttachment" ptr val
    pokeField @"clearValue" ptr val

instance Offset "aspectMask" VkClearAttachment where
  rawOffset = #{offset VkClearAttachment, aspectMask}

instance Offset "colorAttachment" VkClearAttachment where
  rawOffset = #{offset VkClearAttachment, colorAttachment}

instance Offset "clearValue" VkClearAttachment where
  rawOffset = #{offset VkClearAttachment, clearValue}