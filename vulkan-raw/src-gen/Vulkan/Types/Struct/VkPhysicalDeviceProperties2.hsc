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
  sizeOf    _ = #{size      struct VkPhysicalDeviceProperties2}
  alignment _ = #{alignment struct VkPhysicalDeviceProperties2}

  peek ptr = 
    VkPhysicalDeviceProperties2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"properties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"properties" ptr val

instance Offset "sType" VkPhysicalDeviceProperties2 where
  rawOffset = #{offset struct VkPhysicalDeviceProperties2, sType}

instance Offset "pNext" VkPhysicalDeviceProperties2 where
  rawOffset = #{offset struct VkPhysicalDeviceProperties2, pNext}

instance Offset "properties" VkPhysicalDeviceProperties2 where
  rawOffset = #{offset struct VkPhysicalDeviceProperties2, properties}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProperties2 where

#endif