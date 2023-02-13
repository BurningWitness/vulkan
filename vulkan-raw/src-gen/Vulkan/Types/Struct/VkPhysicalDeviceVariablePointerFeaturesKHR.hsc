{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_variable_pointers

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointerFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVariablePointerFeaturesKHR" #-} VkPhysicalDeviceVariablePointerFeaturesKHR =
       VkPhysicalDeviceVariablePointerFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , variablePointersStorageBuffer :: VkBool32
         , variablePointers :: VkBool32
         }

instance Storable VkPhysicalDeviceVariablePointerFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceVariablePointerFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceVariablePointerFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceVariablePointerFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointersStorageBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"variablePointersStorageBuffer" ptr val
    pokeField @"variablePointers" ptr val

instance Offset "sType" VkPhysicalDeviceVariablePointerFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceVariablePointerFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeaturesKHR, pNext}

instance Offset "variablePointersStorageBuffer" VkPhysicalDeviceVariablePointerFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeaturesKHR, variablePointersStorageBuffer}

instance Offset "variablePointers" VkPhysicalDeviceVariablePointerFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeaturesKHR, variablePointers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointerFeaturesKHR where

#endif