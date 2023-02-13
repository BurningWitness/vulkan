{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_input_dynamic_state

module Vulkan.Types.Struct.VkVertexInputAttributeDescription2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVertexInputAttributeDescription2EXT" #-} VkVertexInputAttributeDescription2EXT =
       VkVertexInputAttributeDescription2EXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , location :: #{type uint32_t} -- ^ location of the shader vertex attrib
         , binding :: #{type uint32_t} -- ^ Vertex buffer binding id
         , format :: VkFormat -- ^ format of source data
         , offset :: #{type uint32_t} -- ^ Offset of first element in bytes from base of vertex
         }

instance Storable VkVertexInputAttributeDescription2EXT where
  sizeOf    _ = #{size      VkVertexInputAttributeDescription2EXT}
  alignment _ = #{alignment VkVertexInputAttributeDescription2EXT}

  peek ptr = 
    VkVertexInputAttributeDescription2EXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"location" ptr)
       <*> peek (offset @"binding" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"offset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"location" ptr val
    pokeField @"binding" ptr val
    pokeField @"format" ptr val
    pokeField @"offset" ptr val

instance Offset "sType" VkVertexInputAttributeDescription2EXT where
  rawOffset = #{offset VkVertexInputAttributeDescription2EXT, sType}

instance Offset "pNext" VkVertexInputAttributeDescription2EXT where
  rawOffset = #{offset VkVertexInputAttributeDescription2EXT, pNext}

instance Offset "location" VkVertexInputAttributeDescription2EXT where
  rawOffset = #{offset VkVertexInputAttributeDescription2EXT, location}

instance Offset "binding" VkVertexInputAttributeDescription2EXT where
  rawOffset = #{offset VkVertexInputAttributeDescription2EXT, binding}

instance Offset "format" VkVertexInputAttributeDescription2EXT where
  rawOffset = #{offset VkVertexInputAttributeDescription2EXT, format}

instance Offset "offset" VkVertexInputAttributeDescription2EXT where
  rawOffset = #{offset VkVertexInputAttributeDescription2EXT, offset}

#else

module Vulkan.Types.Struct.VkVertexInputAttributeDescription2EXT where

#endif