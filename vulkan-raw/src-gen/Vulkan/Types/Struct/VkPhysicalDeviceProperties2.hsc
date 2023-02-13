{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceProperties2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceProperties



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProperties2" #-} VkPhysicalDeviceProperties2 =
       VkPhysicalDeviceProperties2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , properties :: VkPhysicalDeviceProperties
         }

instance Storable VkPhysicalDeviceProperties2 where
  sizeOf    _ = #{size      VkPhysicalDeviceProperties2}
  alignment _ = #{alignment VkPhysicalDeviceProperties2}

  peek ptr = 
    VkPhysicalDeviceProperties2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"properties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"properties" ptr val

instance Offset "sType" VkPhysicalDeviceProperties2 where
  rawOffset = #{offset VkPhysicalDeviceProperties2, sType}

instance Offset "pNext" VkPhysicalDeviceProperties2 where
  rawOffset = #{offset VkPhysicalDeviceProperties2, pNext}

instance Offset "properties" VkPhysicalDeviceProperties2 where
  rawOffset = #{offset VkPhysicalDeviceProperties2, properties}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProperties2 where

#endif