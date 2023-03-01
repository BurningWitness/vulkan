{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkIndirectCommandsLayoutTokenNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkIndirectCommandsTokenTypeNV
import Vulkan.Types.Enum.VkIndirectStateFlagsNV
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkIndirectCommandsLayoutTokenNV" #-} VkIndirectCommandsLayoutTokenNV =
       VkIndirectCommandsLayoutTokenNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , tokenType :: VkIndirectCommandsTokenTypeNV
         , stream :: #{type uint32_t}
         , offset :: #{type uint32_t}
         , vertexBindingUnit :: #{type uint32_t}
         , vertexDynamicStride :: VkBool32
         , pushconstantPipelineLayout :: VkPipelineLayout
         , pushconstantShaderStageFlags :: VkShaderStageFlags
         , pushconstantOffset :: #{type uint32_t}
         , pushconstantSize :: #{type uint32_t}
         , indirectStateFlags :: VkIndirectStateFlagsNV
         , indexTypeCount :: #{type uint32_t}
         , pIndexTypes :: Ptr VkIndexType
         , pIndexTypeValues :: Ptr #{type uint32_t}
         }

instance Storable VkIndirectCommandsLayoutTokenNV where
  sizeOf    _ = #{size      VkIndirectCommandsLayoutTokenNV}
  alignment _ = #{alignment VkIndirectCommandsLayoutTokenNV}

  peek ptr = 
    VkIndirectCommandsLayoutTokenNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tokenType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stream" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexBindingUnit" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexDynamicStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pushconstantPipelineLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pushconstantShaderStageFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pushconstantOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pushconstantSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indirectStateFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexTypeCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pIndexTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pIndexTypeValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"tokenType" ptr val
    pokeField @"stream" ptr val
    pokeField @"offset" ptr val
    pokeField @"vertexBindingUnit" ptr val
    pokeField @"vertexDynamicStride" ptr val
    pokeField @"pushconstantPipelineLayout" ptr val
    pokeField @"pushconstantShaderStageFlags" ptr val
    pokeField @"pushconstantOffset" ptr val
    pokeField @"pushconstantSize" ptr val
    pokeField @"indirectStateFlags" ptr val
    pokeField @"indexTypeCount" ptr val
    pokeField @"pIndexTypes" ptr val
    pokeField @"pIndexTypeValues" ptr val

instance Offset "sType" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, sType}

instance Offset "pNext" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pNext}

instance Offset "tokenType" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, tokenType}

instance Offset "stream" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, stream}

instance Offset "offset" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, offset}

instance Offset "vertexBindingUnit" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, vertexBindingUnit}

instance Offset "vertexDynamicStride" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, vertexDynamicStride}

instance Offset "pushconstantPipelineLayout" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pushconstantPipelineLayout}

instance Offset "pushconstantShaderStageFlags" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pushconstantShaderStageFlags}

instance Offset "pushconstantOffset" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pushconstantOffset}

instance Offset "pushconstantSize" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pushconstantSize}

instance Offset "indirectStateFlags" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, indirectStateFlags}

instance Offset "indexTypeCount" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, indexTypeCount}

instance Offset "pIndexTypes" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pIndexTypes}

instance Offset "pIndexTypeValues" VkIndirectCommandsLayoutTokenNV where
  rawOffset = #{offset VkIndirectCommandsLayoutTokenNV, pIndexTypeValues}

#else

module Vulkan.Types.Struct.VkIndirectCommandsLayoutTokenNV where

#endif