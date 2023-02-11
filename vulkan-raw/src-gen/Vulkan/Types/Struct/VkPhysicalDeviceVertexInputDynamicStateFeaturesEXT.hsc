{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_input_dynamic_state

module Vulkan.Types.Struct.VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT" #-} VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT =
       VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vertexInputDynamicState :: VkBool32
         }

instance Storable VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"vertexInputDynamicState" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vertexInputDynamicState" ptr val

instance Offset "sType" VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT, pNext}

instance Offset "vertexInputDynamicState" VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT, vertexInputDynamicState}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT where

#endif