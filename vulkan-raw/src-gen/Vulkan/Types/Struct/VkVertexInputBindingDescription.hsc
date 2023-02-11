{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkVertexInputBindingDescription where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkVertexInputRate



data {-# CTYPE "vulkan/vulkan.h" "VkVertexInputBindingDescription" #-} VkVertexInputBindingDescription =
       VkVertexInputBindingDescription
         { binding :: #{type uint32_t} -- ^ Vertex buffer binding id
         , stride :: #{type uint32_t} -- ^ Distance between vertices in bytes (0 = no advancement)
         , inputRate :: VkVertexInputRate -- ^ The rate at which the vertex data is consumed
         }

instance Storable VkVertexInputBindingDescription where
  sizeOf    _ = #{size      struct VkVertexInputBindingDescription}
  alignment _ = #{alignment struct VkVertexInputBindingDescription}

  peek ptr = 
    VkVertexInputBindingDescription
       <$> peek (offset @"binding" ptr)
       <*> peek (offset @"stride" ptr)
       <*> peek (offset @"inputRate" ptr)

  poke ptr val = do
    pokeField @"binding" ptr val
    pokeField @"stride" ptr val
    pokeField @"inputRate" ptr val

instance Offset "binding" VkVertexInputBindingDescription where
  rawOffset = #{offset struct VkVertexInputBindingDescription, binding}

instance Offset "stride" VkVertexInputBindingDescription where
  rawOffset = #{offset struct VkVertexInputBindingDescription, stride}

instance Offset "inputRate" VkVertexInputBindingDescription where
  rawOffset = #{offset struct VkVertexInputBindingDescription, inputRate}