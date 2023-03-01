{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPipelineTessellationStateCreateInfo}
  alignment _ = #{alignment VkPipelineTessellationStateCreateInfo}

  peek ptr = 
    VkPipelineTessellationStateCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"patchControlPoints" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"patchControlPoints" ptr val

instance Offset "sType" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationStateCreateInfo, sType}

instance Offset "pNext" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationStateCreateInfo, pNext}

instance Offset "flags" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationStateCreateInfo, flags}

instance Offset "patchControlPoints" VkPipelineTessellationStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationStateCreateInfo, patchControlPoints}