{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Types.Struct.VkImageSubresource2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageSubresource



data {-# CTYPE "vulkan/vulkan.h" "VkImageSubresource2EXT" #-} VkImageSubresource2EXT =
       VkImageSubresource2EXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageSubresource :: VkImageSubresource
         }

instance Storable VkImageSubresource2EXT where
  sizeOf    _ = #{size      struct VkImageSubresource2EXT}
  alignment _ = #{alignment struct VkImageSubresource2EXT}

  peek ptr = 
    VkImageSubresource2EXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageSubresource" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageSubresource" ptr val

instance Offset "sType" VkImageSubresource2EXT where
  rawOffset = #{offset struct VkImageSubresource2EXT, sType}

instance Offset "pNext" VkImageSubresource2EXT where
  rawOffset = #{offset struct VkImageSubresource2EXT, pNext}

instance Offset "imageSubresource" VkImageSubresource2EXT where
  rawOffset = #{offset struct VkImageSubresource2EXT, imageSubresource}

#else

module Vulkan.Types.Struct.VkImageSubresource2EXT where

#endif