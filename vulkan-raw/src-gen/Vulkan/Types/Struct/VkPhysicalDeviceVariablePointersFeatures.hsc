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
  sizeOf    _ = #{size      struct VkPhysicalDeviceVariablePointersFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceVariablePointersFeatures}

  peek ptr = 
    VkPhysicalDeviceVariablePointersFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"variablePointersStorageBuffer" ptr)
       <*> peek (offset @"variablePointers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"variablePointersStorageBuffer" ptr val
    pokeField @"variablePointers" ptr val

instance Offset "sType" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVariablePointersFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVariablePointersFeatures, pNext}

instance Offset "variablePointersStorageBuffer" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVariablePointersFeatures, variablePointersStorageBuffer}

instance Offset "variablePointers" VkPhysicalDeviceVariablePointersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVariablePointersFeatures, variablePointers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVariablePointersFeatures where

#endif