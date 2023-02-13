{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceProtectedMemoryProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProtectedMemoryProperties" #-} VkPhysicalDeviceProtectedMemoryProperties =
       VkPhysicalDeviceProtectedMemoryProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , protectedNoFault :: VkBool32
         }

instance Storable VkPhysicalDeviceProtectedMemoryProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceProtectedMemoryProperties}
  alignment _ = #{alignment VkPhysicalDeviceProtectedMemoryProperties}

  peek ptr = 
    VkPhysicalDeviceProtectedMemoryProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"protectedNoFault" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"protectedNoFault" ptr val

instance Offset "sType" VkPhysicalDeviceProtectedMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceProtectedMemoryProperties, sType}

instance Offset "pNext" VkPhysicalDeviceProtectedMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceProtectedMemoryProperties, pNext}

instance Offset "protectedNoFault" VkPhysicalDeviceProtectedMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceProtectedMemoryProperties, protectedNoFault}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProtectedMemoryProperties where

#endif