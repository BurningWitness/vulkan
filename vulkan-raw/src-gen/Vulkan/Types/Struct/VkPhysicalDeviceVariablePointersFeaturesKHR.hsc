{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_variable_pointers

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointersFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVariablePointersFeaturesKHR" #-} VkPhysicalDeviceVariablePointersFeaturesKHR =
       VkPhysicalDeviceVariablePointersFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , variablePointersStorageBuffer :: VkBool32
         , variablePointers :: VkBool32
         }

instance Storable VkPhysicalDeviceVariablePointersFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceVariablePointersFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceVariablePointersFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceVariablePointersFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointersStorageBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"variablePointersStorageBuffer" ptr val
    pokeField @"variablePointers" ptr val

instance Offset "sType" VkPhysicalDeviceVariablePointersFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceVariablePointersFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeaturesKHR, pNext}

instance Offset "variablePointersStorageBuffer" VkPhysicalDeviceVariablePointersFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeaturesKHR, variablePointersStorageBuffer}

instance Offset "variablePointers" VkPhysicalDeviceVariablePointersFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeaturesKHR, variablePointers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointersFeaturesKHR where

#endif