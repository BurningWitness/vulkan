{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkVertexInputAttributeDescription where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat



data {-# CTYPE "vulkan/vulkan.h" "VkVertexInputAttributeDescription" #-} VkVertexInputAttributeDescription =
       VkVertexInputAttributeDescription
         { location :: #{type uint32_t} -- ^ location of the shader vertex attrib
         , binding :: #{type uint32_t} -- ^ Vertex buffer binding id
         , format :: VkFormat -- ^ format of source data
         , offset :: #{type uint32_t} -- ^ Offset of first element in bytes from base of vertex
         }

instance Storable VkVertexInputAttributeDescription where
  sizeOf    _ = #{size      VkVertexInputAttributeDescription}
  alignment _ = #{alignment VkVertexInputAttributeDescription}

  peek ptr = 
    VkVertexInputAttributeDescription
       <$> peek (Foreign.Storable.Offset.offset @"location" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"binding" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)

  poke ptr val = do
    pokeField @"location" ptr val
    pokeField @"binding" ptr val
    pokeField @"format" ptr val
    pokeField @"offset" ptr val

instance Offset "location" VkVertexInputAttributeDescription where
  rawOffset = #{offset VkVertexInputAttributeDescription, location}

instance Offset "binding" VkVertexInputAttributeDescription where
  rawOffset = #{offset VkVertexInputAttributeDescription, binding}

instance Offset "format" VkVertexInputAttributeDescription where
  rawOffset = #{offset VkVertexInputAttributeDescription, format}

instance Offset "offset" VkVertexInputAttributeDescription where
  rawOffset = #{offset VkVertexInputAttributeDescription, offset}