{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkImageSubresource where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageAspectFlags



data {-# CTYPE "vulkan/vulkan.h" "VkImageSubresource" #-} VkImageSubresource =
       VkImageSubresource
         { aspectMask :: VkImageAspectFlags
         , mipLevel :: #{type uint32_t}
         , arrayLayer :: #{type uint32_t}
         }

instance Storable VkImageSubresource where
  sizeOf    _ = #{size      struct VkImageSubresource}
  alignment _ = #{alignment struct VkImageSubresource}

  peek ptr = 
    VkImageSubresource
       <$> peek (offset @"aspectMask" ptr)
       <*> peek (offset @"mipLevel" ptr)
       <*> peek (offset @"arrayLayer" ptr)

  poke ptr val = do
    pokeField @"aspectMask" ptr val
    pokeField @"mipLevel" ptr val
    pokeField @"arrayLayer" ptr val

instance Offset "aspectMask" VkImageSubresource where
  rawOffset = #{offset struct VkImageSubresource, aspectMask}

instance Offset "mipLevel" VkImageSubresource where
  rawOffset = #{offset struct VkImageSubresource, mipLevel}

instance Offset "arrayLayer" VkImageSubresource where
  rawOffset = #{offset struct VkImageSubresource, arrayLayer}