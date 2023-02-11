{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineColorBlendStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkLogicOp
import Vulkan.Types.Enum.VkPipelineColorBlendStateCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineColorBlendAttachmentState



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineColorBlendStateCreateInfo" #-} VkPipelineColorBlendStateCreateInfo =
       VkPipelineColorBlendStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineColorBlendStateCreateFlags
         , logicOpEnable :: VkBool32
         , logicOp :: VkLogicOp
         , attachmentCount :: #{type uint32_t} -- ^ # of pAttachments
         , pAttachments :: Ptr VkPipelineColorBlendAttachmentState
         , blendConstants :: #{type float}
         }

instance Storable VkPipelineColorBlendStateCreateInfo where
  sizeOf    _ = #{size      struct VkPipelineColorBlendStateCreateInfo}
  alignment _ = #{alignment struct VkPipelineColorBlendStateCreateInfo}

  peek ptr = 
    VkPipelineColorBlendStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"logicOpEnable" ptr)
       <*> peek (offset @"logicOp" ptr)
       <*> peek (offset @"attachmentCount" ptr)
       <*> peek (offset @"pAttachments" ptr)
       <*> peek (offset @"blendConstants" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"logicOpEnable" ptr val
    pokeField @"logicOp" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pAttachments" ptr val
    pokeField @"blendConstants" ptr val

instance Offset "sType" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, sType}

instance Offset "pNext" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, pNext}

instance Offset "flags" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, flags}

instance Offset "logicOpEnable" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, logicOpEnable}

instance Offset "logicOp" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, logicOp}

instance Offset "attachmentCount" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, attachmentCount}

instance Offset "pAttachments" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, pAttachments}

instance Offset "blendConstants" VkPipelineColorBlendStateCreateInfo where
  rawOffset = #{offset struct VkPipelineColorBlendStateCreateInfo, blendConstants}