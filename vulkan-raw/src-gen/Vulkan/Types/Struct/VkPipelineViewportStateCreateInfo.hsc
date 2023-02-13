{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineViewportStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineViewportStateCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.Struct.VkViewport



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportStateCreateInfo" #-} VkPipelineViewportStateCreateInfo =
       VkPipelineViewportStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineViewportStateCreateFlags
         , viewportCount :: #{type uint32_t}
         , pViewports :: Ptr VkViewport
         , scissorCount :: #{type uint32_t}
         , pScissors :: Ptr VkRect2D
         }

instance Storable VkPipelineViewportStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineViewportStateCreateInfo}
  alignment _ = #{alignment VkPipelineViewportStateCreateInfo}

  peek ptr = 
    VkPipelineViewportStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"viewportCount" ptr)
       <*> peek (offset @"pViewports" ptr)
       <*> peek (offset @"scissorCount" ptr)
       <*> peek (offset @"pScissors" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"viewportCount" ptr val
    pokeField @"pViewports" ptr val
    pokeField @"scissorCount" ptr val
    pokeField @"pScissors" ptr val

instance Offset "sType" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, sType}

instance Offset "pNext" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, pNext}

instance Offset "flags" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, flags}

instance Offset "viewportCount" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, viewportCount}

instance Offset "pViewports" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, pViewports}

instance Offset "scissorCount" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, scissorCount}

instance Offset "pScissors" VkPipelineViewportStateCreateInfo where
  rawOffset = #{offset VkPipelineViewportStateCreateInfo, pScissors}