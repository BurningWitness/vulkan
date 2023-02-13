{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineDepthStencilStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkPipelineDepthStencilStateCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkStencilOpState



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineDepthStencilStateCreateInfo" #-} VkPipelineDepthStencilStateCreateInfo =
       VkPipelineDepthStencilStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineDepthStencilStateCreateFlags
         , depthTestEnable :: VkBool32
         , depthWriteEnable :: VkBool32
         , depthCompareOp :: VkCompareOp
         , depthBoundsTestEnable :: VkBool32 -- ^ optional (depth_bounds_test)
         , stencilTestEnable :: VkBool32
         , front :: VkStencilOpState
         , back :: VkStencilOpState
         , minDepthBounds :: #{type float}
         , maxDepthBounds :: #{type float}
         }

instance Storable VkPipelineDepthStencilStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineDepthStencilStateCreateInfo}
  alignment _ = #{alignment VkPipelineDepthStencilStateCreateInfo}

  peek ptr = 
    VkPipelineDepthStencilStateCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthTestEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthWriteEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthCompareOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthBoundsTestEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilTestEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"front" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"back" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minDepthBounds" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDepthBounds" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"depthTestEnable" ptr val
    pokeField @"depthWriteEnable" ptr val
    pokeField @"depthCompareOp" ptr val
    pokeField @"depthBoundsTestEnable" ptr val
    pokeField @"stencilTestEnable" ptr val
    pokeField @"front" ptr val
    pokeField @"back" ptr val
    pokeField @"minDepthBounds" ptr val
    pokeField @"maxDepthBounds" ptr val

instance Offset "sType" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, sType}

instance Offset "pNext" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, pNext}

instance Offset "flags" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, flags}

instance Offset "depthTestEnable" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, depthTestEnable}

instance Offset "depthWriteEnable" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, depthWriteEnable}

instance Offset "depthCompareOp" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, depthCompareOp}

instance Offset "depthBoundsTestEnable" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, depthBoundsTestEnable}

instance Offset "stencilTestEnable" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, stencilTestEnable}

instance Offset "front" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, front}

instance Offset "back" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, back}

instance Offset "minDepthBounds" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, minDepthBounds}

instance Offset "maxDepthBounds" VkPipelineDepthStencilStateCreateInfo where
  rawOffset = #{offset VkPipelineDepthStencilStateCreateInfo, maxDepthBounds}