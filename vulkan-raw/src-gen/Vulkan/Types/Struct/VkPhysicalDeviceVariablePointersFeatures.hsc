{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointersFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVariablePointersFeatures" #-} VkPhysicalDeviceVariablePointersFeatures =
       VkPhysicalDeviceVariablePointersFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , variablePointersStorageBuffer :: VkBool32
         , variablePointers :: VkBool32
         }

instance Storable VkPhysicalDeviceVariablePointersFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceVariablePointersFeatures}
  alignment _ = #{alignment VkPhysicalDeviceVariablePointersFeatures}

  peek ptr = 
    VkPhysicalDeviceVariablePointersFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointersStorageBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"variablePointers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"variablePointersStorageBuffer" ptr val
    pokeField @"variablePointers" ptr val

instance Offset "sType" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeatures, pNext}

instance Offset "variablePointersStorageBuffer" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeatures, variablePointersStorageBuffer}

instance Offset "variablePointers" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset VkPhysicalDeviceVariablePointersFeatures, variablePointers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointersFeatures where

#endif