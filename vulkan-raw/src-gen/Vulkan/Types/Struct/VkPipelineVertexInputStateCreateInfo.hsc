{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineVertexInputStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineVertexInputStateCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVertexInputAttributeDescription
import Vulkan.Types.Struct.VkVertexInputBindingDescription



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineVertexInputStateCreateInfo" #-} VkPipelineVertexInputStateCreateInfo =
       VkPipelineVertexInputStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineVertexInputStateCreateFlags
         , vertexBindingDescriptionCount :: #{type uint32_t} -- ^ number of bindings
         , pVertexBindingDescriptions :: Ptr VkVertexInputBindingDescription
         , vertexAttributeDescriptionCount :: #{type uint32_t} -- ^ number of attributes
         , pVertexAttributeDescriptions :: Ptr VkVertexInputAttributeDescription
         }

instance Storable VkPipelineVertexInputStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineVertexInputStateCreateInfo}
  alignment _ = #{alignment VkPipelineVertexInputStateCreateInfo}

  peek ptr = 
    VkPipelineVertexInputStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"vertexBindingDescriptionCount" ptr)
       <*> peek (offset @"pVertexBindingDescriptions" ptr)
       <*> peek (offset @"vertexAttributeDescriptionCount" ptr)
       <*> peek (offset @"pVertexAttributeDescriptions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"vertexBindingDescriptionCount" ptr val
    pokeField @"pVertexBindingDescriptions" ptr val
    pokeField @"vertexAttributeDescriptionCount" ptr val
    pokeField @"pVertexAttributeDescriptions" ptr val

instance Offset "sType" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, sType}

instance Offset "pNext" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, pNext}

instance Offset "flags" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, flags}

instance Offset "vertexBindingDescriptionCount" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, vertexBindingDescriptionCount}

instance Offset "pVertexBindingDescriptions" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, pVertexBindingDescriptions}

instance Offset "vertexAttributeDescriptionCount" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, vertexAttributeDescriptionCount}

instance Offset "pVertexAttributeDescriptions" VkPipelineVertexInputStateCreateInfo where
  rawOffset = #{offset VkPipelineVertexInputStateCreateInfo, pVertexAttributeDescriptions}