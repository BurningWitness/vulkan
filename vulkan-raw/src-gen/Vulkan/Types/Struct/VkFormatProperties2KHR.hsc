{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkFormatProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkFormatProperties2KHR" #-} VkFormatProperties2KHR =
       VkFormatProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , formatProperties :: VkFormatProperties
         }

instance Storable VkFormatProperties2KHR where
  sizeOf    _ = #{size      VkFormatProperties2KHR}
  alignment _ = #{alignment VkFormatProperties2KHR}

  peek ptr = 
    VkFormatProperties2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"formatProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"formatProperties" ptr val

instance Offset "sType" VkFormatProperties2KHR where
  rawOffset = #{offset VkFormatProperties2KHR, sType}

instance Offset "pNext" VkFormatProperties2KHR where
  rawOffset = #{offset VkFormatProperties2KHR, pNext}

instance Offset "formatProperties" VkFormatProperties2KHR where
  rawOffset = #{offset VkFormatProperties2KHR, formatProperties}

#else

module Vulkan.Types.Struct.VkFormatProperties2KHR where

#endif