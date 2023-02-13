{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_attribute_divisor

module Vulkan.Types.Struct.VkPipelineVertexInputDivisorStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVertexInputBindingDivisorDescriptionEXT



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineVertexInputDivisorStateCreateInfoEXT" #-} VkPipelineVertexInputDivisorStateCreateInfoEXT =
       VkPipelineVertexInputDivisorStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vertexBindingDivisorCount :: #{type uint32_t}
         , pVertexBindingDivisors :: Ptr VkVertexInputBindingDivisorDescriptionEXT
         }

instance Storable VkPipelineVertexInputDivisorStateCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineVertexInputDivisorStateCreateInfoEXT}
  alignment _ = #{alignment VkPipelineVertexInputDivisorStateCreateInfoEXT}

  peek ptr = 
    VkPipelineVertexInputDivisorStateCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"vertexBindingDivisorCount" ptr)
       <*> peek (offset @"pVertexBindingDivisors" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vertexBindingDivisorCount" ptr val
    pokeField @"pVertexBindingDivisors" ptr val

instance Offset "sType" VkPipelineVertexInputDivisorStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineVertexInputDivisorStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineVertexInputDivisorStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineVertexInputDivisorStateCreateInfoEXT, pNext}

instance Offset "vertexBindingDivisorCount" VkPipelineVertexInputDivisorStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineVertexInputDivisorStateCreateInfoEXT, vertexBindingDivisorCount}

instance Offset "pVertexBindingDivisors" VkPipelineVertexInputDivisorStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineVertexInputDivisorStateCreateInfoEXT, pVertexBindingDivisors}

#else

module Vulkan.Types.Struct.VkPipelineVertexInputDivisorStateCreateInfoEXT where

#endif