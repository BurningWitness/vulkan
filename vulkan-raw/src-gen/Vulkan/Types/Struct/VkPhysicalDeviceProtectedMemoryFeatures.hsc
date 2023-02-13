{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceProtectedMemoryFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProtectedMemoryFeatures" #-} VkPhysicalDeviceProtectedMemoryFeatures =
       VkPhysicalDeviceProtectedMemoryFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , protectedMemory :: VkBool32
         }

instance Storable VkPhysicalDeviceProtectedMemoryFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceProtectedMemoryFeatures}
  alignment _ = #{alignment VkPhysicalDeviceProtectedMemoryFeatures}

  peek ptr = 
    VkPhysicalDeviceProtectedMemoryFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"protectedMemory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"protectedMemory" ptr val

instance Offset "sType" VkPhysicalDeviceProtectedMemoryFeatures where
  rawOffset = #{offset VkPhysicalDeviceProtectedMemoryFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceProtectedMemoryFeatures where
  rawOffset = #{offset VkPhysicalDeviceProtectedMemoryFeatures, pNext}

instance Offset "protectedMemory" VkPhysicalDeviceProtectedMemoryFeatures where
  rawOffset = #{offset VkPhysicalDeviceProtectedMemoryFeatures, protectedMemory}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProtectedMemoryFeatures where

#endif