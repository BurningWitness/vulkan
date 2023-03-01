{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointerFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVariablePointerFeatures" #-} VkPhysicalDeviceVariablePointerFeatures =
       VkPhysicalDeviceVariablePointerFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , variablePointersStorageBuffer :: VkBool32
         , variablePointers :: VkBool32
         }

instance Storable VkPhysicalDeviceVariablePointerFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceVariablePointerFeatures}
  alignment _ = #{alignment VkPhysicalDeviceVariablePointerFeatures}

  peek ptr = 
    VkPhysicalDeviceVariablePointerFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointersStorageBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"variablePointersStorageBuffer" ptr val
    pokeField @"variablePointers" ptr val

instance Offset "sType" VkPhysicalDeviceVariablePointerFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceVariablePointerFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeatures, pNext}

instance Offset "variablePointersStorageBuffer" VkPhysicalDeviceVariablePointerFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeatures, variablePointersStorageBuffer}

instance Offset "variablePointers" VkPhysicalDeviceVariablePointerFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointerFeatures, variablePointers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointerFeatures where

#endif