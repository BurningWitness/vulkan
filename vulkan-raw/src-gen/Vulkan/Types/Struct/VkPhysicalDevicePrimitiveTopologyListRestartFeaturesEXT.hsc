{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_primitive_topology_list_restart

module Vulkan.Types.Struct.VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT" #-} VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT =
       VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , primitiveTopologyListRestart :: VkBool32
         , primitiveTopologyPatchListRestart :: VkBool32
         }

instance Storable VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"primitiveTopologyListRestart" ptr)
       <*> peek (offset @"primitiveTopologyPatchListRestart" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"primitiveTopologyListRestart" ptr val
    pokeField @"primitiveTopologyPatchListRestart" ptr val

instance Offset "sType" VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT, pNext}

instance Offset "primitiveTopologyListRestart" VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT, primitiveTopologyListRestart}

instance Offset "primitiveTopologyPatchListRestart" VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT, primitiveTopologyPatchListRestart}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT where

#endif