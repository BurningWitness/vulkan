{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkImageFormatProperties2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkImageFormatProperties2" #-} VkImageFormatProperties2 =
       VkImageFormatProperties2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageFormatProperties :: VkImageFormatProperties
         }

instance Storable VkImageFormatProperties2 where
  sizeOf    _ = #{size      struct VkImageFormatProperties2}
  alignment _ = #{alignment struct VkImageFormatProperties2}

  peek ptr = 
    VkImageFormatProperties2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageFormatProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageFormatProperties" ptr val

instance Offset "sType" VkImageFormatProperties2 where
  rawOffset = #{offset struct VkImageFormatProperties2, sType}

instance Offset "pNext" VkImageFormatProperties2 where
  rawOffset = #{offset struct VkImageFormatProperties2, pNext}

instance Offset "imageFormatProperties" VkImageFormatProperties2 where
  rawOffset = #{offset struct VkImageFormatProperties2, imageFormatProperties}

#else

module Vulkan.Types.Struct.VkImageFormatProperties2 where

#endif