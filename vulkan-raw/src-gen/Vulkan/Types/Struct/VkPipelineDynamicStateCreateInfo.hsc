{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineDynamicStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkPipelineDynamicStateCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineDynamicStateCreateInfo" #-} VkPipelineDynamicStateCreateInfo =
       VkPipelineDynamicStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineDynamicStateCreateFlags
         , dynamicStateCount :: #{type uint32_t}
         , pDynamicStates :: Ptr VkDynamicState
         }

instance Storable VkPipelineDynamicStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineDynamicStateCreateInfo}
  alignment _ = #{alignment VkPipelineDynamicStateCreateInfo}

  peek ptr = 
    VkPipelineDynamicStateCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dynamicStateCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDynamicStates" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"dynamicStateCount" ptr val
    pokeField @"pDynamicStates" ptr val

instance Offset "sType" VkPipelineDynamicStateCreateInfo where
  rawOffset = #{offset VkPipelineDynamicStateCreateInfo, sType}

instance Offset "pNext" VkPipelineDynamicStateCreateInfo where
  rawOffset = #{offset VkPipelineDynamicStateCreateInfo, pNext}

instance Offset "flags" VkPipelineDynamicStateCreateInfo where
  rawOffset = #{offset VkPipelineDynamicStateCreateInfo, flags}

instance Offset "dynamicStateCount" VkPipelineDynamicStateCreateInfo where
  rawOffset = #{offset VkPipelineDynamicStateCreateInfo, dynamicStateCount}

instance Offset "pDynamicStates" VkPipelineDynamicStateCreateInfo where
  rawOffset = #{offset VkPipelineDynamicStateCreateInfo, pDynamicStates}