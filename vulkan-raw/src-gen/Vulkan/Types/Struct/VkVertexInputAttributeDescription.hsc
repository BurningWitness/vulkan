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
  sizeOf    _ = #{size      struct VkVertexInputAttributeDescription}
  alignment _ = #{alignment struct VkVertexInputAttributeDescription}

  peek ptr = 
    VkVertexInputAttributeDescription
       <$> peek (offset @"location" ptr)
       <*> peek (offset @"binding" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"offset" ptr)

  poke ptr val = do
    pokeField @"location" ptr val
    pokeField @"binding" ptr val
    pokeField @"format" ptr val
    pokeField @"offset" ptr val

instance Offset "location" VkVertexInputAttributeDescription where
  rawOffset = #{offset struct VkVertexInputAttributeDescription, location}

instance Offset "binding" VkVertexInputAttributeDescription where
  rawOffset = #{offset struct VkVertexInputAttributeDescription, binding}

instance Offset "format" VkVertexInputAttributeDescription where
  rawOffset = #{offset struct VkVertexInputAttributeDescription, format}

instance Offset "offset" VkVertexInputAttributeDescription where
  rawOffset = #{offset struct VkVertexInputAttributeDescription, offset}