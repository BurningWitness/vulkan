{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkImageFormatProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkImageFormatProperties2KHR" #-} VkImageFormatProperties2KHR =
       VkImageFormatProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageFormatProperties :: VkImageFormatProperties
         }

instance Storable VkImageFormatProperties2KHR where
  sizeOf    _ = #{size      VkImageFormatProperties2KHR}
  alignment _ = #{alignment VkImageFormatProperties2KHR}

  peek ptr = 
    VkImageFormatProperties2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageFormatProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageFormatProperties" ptr val

instance Offset "sType" VkImageFormatProperties2KHR where
  rawOffset = #{offset VkImageFormatProperties2KHR, sType}

instance Offset "pNext" VkImageFormatProperties2KHR where
  rawOffset = #{offset VkImageFormatProperties2KHR, pNext}

instance Offset "imageFormatProperties" VkImageFormatProperties2KHR where
  rawOffset = #{offset VkImageFormatProperties2KHR, imageFormatProperties}

#else

module Vulkan.Types.Struct.VkImageFormatProperties2KHR where

#endif