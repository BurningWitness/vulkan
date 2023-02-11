{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineTessellationStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineTessellationStateCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineTessellationStateCreateInfo" #-} VkPipelineTessellationStateCreateInfo =
       VkPipelineTessellationStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineTessellationStateCreateFlags
         , patchControlPoints :: #{type uint32_t}
         }

instance Storable VkPipelineTessellationStateCreateInfo where
  sizeOf    _ = #{size      struct VkPipelineTessellationStateCreateInfo}
  alignment _ = #{alignment struct VkPipelineTessellationStateCreateInfo}

  peek ptr = 
    VkPipelineTessellationStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"patchControlPoints" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"patchControlPoints" ptr val

instance Offset "sType" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset struct VkPipelineTessellationStateCreateInfo, sType}

instance Offset "pNext" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset struct VkPipelineTessellationStateCreateInfo, pNext}

instance Offset "flags" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset struct VkPipelineTessellationStateCreateInfo, flags}

instance Offset "patchControlPoints" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset struct VkPipelineTessellationStateCreateInfo, patchControlPoints}